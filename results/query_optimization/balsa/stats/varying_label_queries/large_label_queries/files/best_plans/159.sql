/*+ MergeJoin(ph u c b)
 NestLoop(u c b)
 NestLoop(u c)
 SeqScan(ph)
 IndexScan(u)
 IndexScan(c)
 IndexScan(b)
 Leading((ph ((u c) b))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND ph.CreationDate>='2010-10-05 19:41:51'::timestamp AND ph.CreationDate<='2014-09-03 13:08:10'::timestamp AND u.Views=0 AND u.DownVotes>=0 AND u.DownVotes<=113 AND u.UpVotes>=0;

