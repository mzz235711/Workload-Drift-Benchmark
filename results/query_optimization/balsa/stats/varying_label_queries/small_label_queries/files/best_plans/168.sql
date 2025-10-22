/*+ NestLoop(u p v c)
 NestLoop(u p v)
 HashJoin(u p)
 IndexScan(u)
 SeqScan(p)
 IndexScan(v)
 IndexScan(c)
 Leading((((u p) v) c)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND c.CreationDate>='2010-08-19 10:44:24'::timestamp AND c.CreationDate<='2014-09-10 20:16:21'::timestamp AND p.PostTypeId=1 AND p.FavoriteCount>=0 AND v.CreationDate<='2014-09-11 00:00:00'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.UpVotes=0;

