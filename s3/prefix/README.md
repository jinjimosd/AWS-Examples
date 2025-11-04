## Create bucket
```sh
aws s3 mb s3://prefixes-fun-ab-3424
```

## Create folder
```sh
aws s3api put-object --bucket="prefixes-fun-ab-3424" --key="hello/"
```

## Create folder multiple level
```sh
aws s3api put-object --bucket="prefixes-fun-ab-3424" --key="Lorem/ipsum/dolor/sit/amet/consectetur/adipiscing/elit/Phasellus/scelerisque/justo/eu/vulputate/consequat/Donec/in/auctor/quam/Proin/vel/risus/porttitor/facilisis/ipsum/et/vehicula/odio/Sed/ornare/turpis/at/eleifend/vehicula/Nam/bibendum/convallis/nisl/non/bibendum/arcu/ultricies/quis/Pellentesque/finibus/nunc/at/ex/tincidunt/tristique/Sed/viverra/nunc/vel/augue/ultricies/dignissim/Nulla/facilisi/Praesent/nunc/libero/condimentum/id/hendrerit/nec/dignissim/sit/amet/orci/Pellentesque/quis/turpis/ipsum/Donec/feugiat/vulputate/fringilla/Integer/at/augue/pharetra/eleifend/dolor/non/iaculis/turpis/Vestibulum/laoreet/nulla/vel/ipsum/ultricies/at/pretium/ex/euismod/"
```

## Put object
```sh
aws s3api put-object --bucket="prefixes-fun-ab-3424" --key="Lorem/ipsum/dolor/sit/amet/consectetur/adipiscing/elit/Phasellus/scelerisque/justo/eu/vulputate/consequat/Donec/in/auctor/quam/Proin/vel/risus/porttitor/facilisis/ipsum/et/vehicula/odio/Sed/ornare/turpis/at/eleifend/vehicula/Nam/bibendum/convallis/nisl/non/bibendum/arcu/ultricies/quis/Pellentesque/finibus/nunc/at/ex/tincidunt/tristique/Sed/viverra/nunc/vel/augue/ultricies/dignissim/Nulla/facilisi/Praesent/nunc/libero/condimentum/id/hendrerit/nec/dignissim/sit/amet/orci/Pellentesque/quis/turpis/ipsum/Donec/feugiat/vulputate/fringilla/Integer/at/augue/pharetra/eleifend/dolor/non/iaculis/turpis/Vestibulum/laoreet/nulla/vel/ipsum/ultricies/at/pretium/ex/euismod/" --body="myfile.txt"
```

