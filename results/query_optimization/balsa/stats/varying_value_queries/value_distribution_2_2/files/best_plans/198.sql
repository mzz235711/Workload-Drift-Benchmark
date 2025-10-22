/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-12 AND p.Score<181 AND p.CommentCount>6 AND p.CommentCount<41 AND u.DownVotes>275 AND u.DownVotes<1543 AND v.CreationDate>'2010-07-23 17:25:28'::timestamp AND v.CreationDate<'2014-03-30 01:18:49'::timestamp AND v.VoteTypeId>9 AND v.VoteTypeId<14 AND b.Date>'2013-08-19 10:25:23'::timestamp AND b.Date<'2014-06-20 23:45:44'::timestamp;

