/*+ HashJoin(c u ph)
 HashJoin(c u)
 SeqScan(c)
 SeqScan(u)
 SeqScan(ph)
 Leading(((c u) ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.Score=0 AND c.CreationDate<='2014-09-12 14:23:56'::timestamp AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2010-10-13 14:58:24'::timestamp AND ph.CreationDate<='2014-09-11 19:51:26'::timestamp AND u.Views<=3899 AND u.DownVotes>=0 AND u.UpVotes>=0 AND u.CreationDate>='2010-08-25 20:48:41'::timestamp;

