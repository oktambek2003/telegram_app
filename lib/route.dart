import 'package:flutter/material.dart';
import 'package:image/drawerScreen/Calll.dart';
import 'package:image/drawerScreen/Contact.dart';
import 'package:image/drawerScreen/newChannel.dart';
import 'package:image/drawerScreen/newContact.dart';
import 'package:image/drawerScreen/newGroup.dart';
import 'package:image/drawerScreen/savedMessenger.dart';
import 'package:image/drawerScreen/settings.dart';
import './screen/blackSceen.dart';
import './screen/homeSceen.dart';
Route generateroute(settings){
if (settings.name == HomeSceen.routName) {
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => HomeSceen());
  } 
  if (settings.name == Call.routname) {
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => Call());
  } 
  if (settings.name == Contact.routname) {
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => Contact());
  } 
  if (settings.name == NewChannelPage.routname) {
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => NewChannelPage());
  } 
  if (settings.name == NewGroupPage.routname) {
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => NewGroupPage());
  } 
  if (settings.name == SavedMessenger.routname) {
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => SavedMessenger());
  } 
    if (settings.name == Settings.routname) {
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => Settings());
  } 
  if (settings.name == NewContact.routName) {
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => NewContact());
  } 
    return MaterialPageRoute(settings: settings, builder: (context) => BlackScerens());

}