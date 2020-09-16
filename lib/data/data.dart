import 'package:facebook_ui_clone/models/post_model.dart';
import 'package:facebook_ui_clone/models/story_model.dart';
import 'package:facebook_ui_clone/models/user_model.dart';

final User currentUser = User(
  name: 'Arnob Mahmud',
  imageUrl:
      'https://scontent.fdac49-1.fna.fbcdn.net/v/t1.0-9/116803457_285977029349173_7465893923662504662_n.jpg?_nc_cat=106&_nc_sid=09cbfe&_nc_ohc=DLHb1Q7gCooAX9zWfrI&_nc_oc=AQmOeDfcYEpBVKePmQ5zd0tmPcbt4hSWJzPRqi9dthn7o48SQmYUNXjyJKPQUVz2NHQ&_nc_ht=scontent.fdac49-1.fna&oh=d92454207d5c057df9fd7ffcdfb8728a&oe=5F84EBA4',
);

final List<User> onlineUsers = [
  User(
    name: 'Mahmud Un Nabi',
    imageUrl:
        'https://scontent.fdac49-1.fna.fbcdn.net/v/t1.0-9/50703114_1969666376480346_6852114906196475904_o.jpg?_nc_cat=103&_nc_sid=174925&_nc_ohc=XJ54hu2EiNwAX-_JYO9&_nc_ht=scontent.fdac49-1.fna&oh=a2c03cf2237ca0f2170c27e1d45661fd&oe=5F873C18',
  ),
  User(
    name: 'Henn Kylen',
    imageUrl:
        'https://images.unsplash.com/photo-1586297135537-94bc9ba060aa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
  ),
  User(
    name: 'Albert Lawf',
    imageUrl:
        'https://images.unsplash.com/flagged/photo-1573740144655-bbb6e88fb18a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80',
  ),
  User(
    name: 'Ed Christian',
    imageUrl:
        'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
  ),
  User(
    name: 'Robert Mooor',
    imageUrl:
        'https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
  ),
  User(
    name: 'Ellen Alferdo',
    imageUrl:
        'https://images.unsplash.com/photo-1519631128182-433895475ffe?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
  ),
  User(
      name: 'Elizabeth Aiguler',
      imageUrl:
          'https://images.unsplash.com/photo-1515077678510-ce3bdf418862?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjF9&auto=format&fit=crop&w=675&q=80'),
  User(
    name: 'James Lathrop',
    imageUrl:
        'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=592&q=80',
  ),
];

final List<Story> stories = [
  Story(
    user: onlineUsers[0],
    imageUrl:
        'https://scontent.fdac49-1.fna.fbcdn.net/v/t1.0-9/118286450_3145103518936620_4873587967566357884_n.jpg?_nc_cat=111&_nc_sid=09cbfe&_nc_ohc=5z-XHvPcZsQAX8GaVxS&_nc_oc=AQlYSSLb5Z-MB45hq1Ivc66R5090GK6eF0vRAhEDE2yzJVu9Om4PtU1OlONU4KRStgU&_nc_ht=scontent.fdac49-1.fna&oh=ef7076829071bf971ca11f6814b3e261&oe=5F875FC1',
  ),
  Story(
    user: onlineUsers[6],
    imageUrl:
        'https://images.unsplash.com/photo-1541933254460-1d1c8a14ae3c?ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    isViewed: true,
  ),
  Story(
    user: onlineUsers[4],
    imageUrl:
        'https://images.unsplash.com/photo-1541930949-5ce9e31b397a?ixlib=rb-1.2.1&auto=format&fit=crop&w=675&q=80',
  ),
  Story(
    user: onlineUsers[5],
    imageUrl:
        'https://images.unsplash.com/photo-1541874760634-a0da8ee7415b?ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    isViewed: true,
  ),
  Story(
    user: onlineUsers[3],
    imageUrl:
        'https://images.unsplash.com/photo-1541918602878-4e1ebfc7b739?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
  ),
  Story(
    user: onlineUsers[2],
    imageUrl:
        'https://images.unsplash.com/photo-1541837558-b336b96df4ef?ixlib=rb-1.2.1&auto=format&fit=crop&w=644&q=80',
  ),
];

final List<Post> posts = [
  Post(
    user: onlineUsers[0],
    caption: 'MIST Days',
    timeAgo: '3hr',
    imageUrl:
        'https://scontent.fdac49-1.fna.fbcdn.net/v/t1.0-9/96764275_1215988778732233_8858857312039731200_n.jpg?_nc_cat=111&_nc_sid=8bfeb9&_nc_ohc=aF9Q2wJs-T4AX8l_oro&_nc_ht=scontent.fdac49-1.fna&oh=2a5fadd47d9294e4f8733bf807cf6fc1&oe=5F85B72B',
    likes: 183,
    comments: 79,
    shares: 18,
  ),
  Post(
    user: currentUser,
    caption: 'Uploaded new profile photo',
    timeAgo: '58m',
    imageUrl:
        'https://scontent.fdac49-1.fna.fbcdn.net/v/t1.0-9/116803457_285977029349173_7465893923662504662_n.jpg?_nc_cat=106&_nc_sid=09cbfe&_nc_ohc=DLHb1Q7gCooAX9zWfrI&_nc_oc=AQmOeDfcYEpBVKePmQ5zd0tmPcbt4hSWJzPRqi9dthn7o48SQmYUNXjyJKPQUVz2NHQ&_nc_ht=scontent.fdac49-1.fna&oh=d92454207d5c057df9fd7ffcdfb8728a&oe=5F84EBA4',
    likes: 112,
    comments: 13,
    shares: 3,
  ),
  Post(
    user: onlineUsers[4],
    caption: 'This is a very good boi.',
    timeAgo: '8hr',
    imageUrl:
        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fmedium.com%2F%40arnobmahmud%2Flinux-20-04-identical-to-windows-10-linuxfx-10-2-878a5927fc96&psig=AOvVaw3pgkLlNQ-WBQmP6skelM_o&ust=1600280331760000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCMjT3vni6-sCFQAAAAAdAAAAABAF',
    likes: 894,
    comments: 201,
    shares: 27,
  ),
  Post(
    user: onlineUsers[3],
    caption: 'Adventure 🏔',
    timeAgo: '15hr',
    imageUrl:
        'https://images.unsplash.com/photo-1573331519317-30b24326bb9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
    likes: 722,
    comments: 183,
    shares: 42,
  ),
];
