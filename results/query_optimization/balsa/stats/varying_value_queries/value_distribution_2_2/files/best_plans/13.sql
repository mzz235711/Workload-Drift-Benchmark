/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>13 AND p.Score<169 AND p.CommentCount>1 AND p.CommentCount<20 AND u.DownVotes>36 AND u.DownVotes<1337 AND v.CreationDate>'2010-08-01 00:32:07'::timestamp AND v.CreationDate<'2012-09-13 07:06:34'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<15 AND b.Date>'2010-08-05 16:22:53'::timestamp AND b.Date<'2011-06-26 01:13:40'::timestamp;

