/*+ MergeJoin(c ph u v)
 MergeJoin(ph u v)
 NestLoop(u v)
 SeqScan(c)
 SeqScan(ph)
 SeqScan(u)
 IndexScan(v)
 Leading((c (ph (u v)))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND c.Score=0 AND ph.PostHistoryTypeId=2 AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND u.DownVotes>=0 AND u.CreationDate>='2011-05-19 17:07:50'::timestamp AND u.CreationDate<='2014-08-12 20:14:40'::timestamp;

