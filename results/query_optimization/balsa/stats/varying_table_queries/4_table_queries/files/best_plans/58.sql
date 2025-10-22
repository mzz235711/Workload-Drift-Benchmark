/*+ HashJoin(c u b ph)
 NestLoop(u b ph)
 HashJoin(u b)
 IndexScan(c)
 IndexScan(u)
 SeqScan(b)
 IndexScan(ph)
 Leading((c ((u b) ph))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND ph.PostHistoryTypeId=2 AND b.Date>='2010-10-14 07:59:36'::timestamp AND b.Date<='2014-09-11 16:13:26'::timestamp AND u.Reputation>=1 AND u.DownVotes>=0;

