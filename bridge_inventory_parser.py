import argparse
import csv


def dms2dd(degrees, minutes, seconds, direction):
    dd = float(degrees) + float(minutes)/60 + float(seconds)/(60*60)
    if direction == 'E' or direction == 'N':
        dd *= -1
    return dd


def dd2dms(deg):
    d = int(deg)
    md = abs(deg - d) * 60
    m = int(md)
    sd = (md - m) * 60
    return [d, m, sd]


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('input', type=argparse.FileType('r'))
    parser.add_argument('output', type=argparse.FileType('w'))
    args = parser.parse_args()

    reader = csv.DictReader(args.input, quotechar="'")

    fieldnames = reader.fieldnames + ['lat', 'lon']

    writer = csv.DictWriter(args.output, fieldnames)
    writer.writeheader()
    for input_line in reader:
        output_line = input_line

        try:
            lat = input_line['LAT_016']
            if lat and len(lat) == 8:
                (degrees, minutes, seconds) = map(float, (lat[0:2], lat[2:4], lat[4:8]))
                seconds = seconds / 100.0
                lat = dms2dd(degrees, minutes, seconds, 'N')
                output_line['lat'] = round(lat, 7)
            else:
                print "Skipping because lat: {}".format(input_line['LAT_016'])
        except:
            print "Couldn't parse lat: {}".format(input_line['LAT_016'])
            raise

        try:
            lon = input_line['LONG_017']
            if lon and len(lon) == 9:
                (degrees, minutes, seconds) = map(float, (lon[0:3], lon[3:5], lon[5:9]))
                seconds = seconds / 100.0
                lon = dms2dd(degrees, minutes, seconds, 'W')
                output_line['lon'] = round(lon, 7)
            else:
                print "Skipping because lon: {}".format(input_line['LONG_017'])
        except:
            print "Couldn't parse lon: {}".format(input_line['LONG_017'])
            raise

        writer.writerow(output_line)
