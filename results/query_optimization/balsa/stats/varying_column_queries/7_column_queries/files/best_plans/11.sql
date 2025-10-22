/*+ NestLoop(v ph u b c)
 MergeJoin(v ph u b)
 HashJoin(ph u b)
 HashJoin(u b)
 IndexScan(v)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(b)
 IndexScan(c)
 Leading(((v (ph (u b))) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, votes as v, users as u WHERE u.Id =b.UserId AND b.UserId = ph.UserId AND ph.UserId = v.UserId AND v.UserId = c.UserId AND ph.PostHistoryTypeId=3 AND ph.CreationDate<='2014-08-11 13:37:39'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=100 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND u.DownVotes>=0 AND u.UpVotes=0;

