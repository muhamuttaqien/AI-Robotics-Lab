# waypoint_generator
This package generate waypoints for 2D navigation by using /map and /odom

## How to use

`amcl`を走らせながらこれを起動しておくか、rvizのクリックでも追加できるよ。  
`rviz`で`tf`を表示させて`scale`を10くらいにしておくとwaypointの姿勢もわかるよ。  
箱の周りの輪っかで姿勢を変えられるけど上手く行かないことがある（バグ？）ので拡大したりしながら根気よくやろう。  

### required
- /amcl_pose

### run

#### generate waypoint

```bash
$ rosrun waypoint_generator waypoint_generator
```
If you have already had waypoints file as point.csv,  
```bash
$ rosrun waypoint_generator waypoint_generator --load path/to/point.csv
```
The waypoint file format is below.
```
x, y, z, qx, qy, qz, qw, is_searching_area, reach_threshold
```
#### save waypoint
```bash
$ rosrun waypoint_generator waypoint_saver
```

### modify_waypoint
If the waypoint area is searching area, the you can make last colum `1`.  
If you set it correct, the marker color will be yellow.  
The normal color is green.  

### parameters
- `dist_th` : threshold of distance for adding new waypoint
- `yaw_th` : threshold of yaw angle[rad] for adding new waypoint

### check waypoints
If you want to check the waypoints,
```bash
rosrun waypoint_generator waypoint_server --load path/to/waypoints.csv
```

## ros launchによる方法
以下のコマンドでrvizを立ち上げて、waypointを設定したい地図をインポートする。

```bash
$ roslaunch cirkit_waypoint_generator waypoint_generator.launch 
```
次にrviz上のpublish pointを選択して、waypointにしたい位置にカーソルを合わせてクリックしていく。これを順に繰り返して、waypointを保存したい場合は以下のコマンドを実行する。
```bash
$ rosrun waypoint_generator waypoint_saver
```
そうするとcsvファイルが生成される。

## TODO
- [x] waypointを保存する
- [x] waypointを読み込む
