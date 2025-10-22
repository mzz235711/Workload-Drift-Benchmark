/*+ HashJoin(u c ph)
 NestLoop(u c)
 IndexScan(u)
 IndexScan(c)
 SeqScan(ph)
 Leading(((u c) ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.Score=0 AND c.CreationDate<='2014-09-01 20:28:11'::timestamp AND ph.PostHistoryTypeId=3 AND u.Reputation<=1453 AND u.Views>=0 AND u.UpVotes>=0 AND u.CreationDate='2012-06-29 00:16:46'::timestamp;

