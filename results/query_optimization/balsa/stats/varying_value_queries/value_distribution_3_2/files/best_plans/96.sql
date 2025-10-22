/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>45 AND p.Score<156 AND p.CommentCount>10 AND p.CommentCount<20 AND u.DownVotes>64 AND u.DownVotes<1574 AND v.CreationDate>'2012-05-22 19:44:49'::timestamp AND v.CreationDate<'2014-04-14 08:28:44'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<13 AND b.Date>'2013-10-24 13:44:24'::timestamp AND b.Date<'2014-03-28 17:48:23'::timestamp;

