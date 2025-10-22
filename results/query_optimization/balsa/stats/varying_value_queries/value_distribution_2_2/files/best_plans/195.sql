/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>7 AND p.Score<73 AND p.CommentCount>16 AND p.CommentCount<44 AND u.DownVotes>226 AND u.DownVotes<1620 AND v.CreationDate>'2009-09-14 11:04:30'::timestamp AND v.CreationDate<'2011-12-12 01:24:53'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<15 AND b.Date>'2011-03-07 01:19:29'::timestamp AND b.Date<'2013-06-09 16:59:00'::timestamp;

