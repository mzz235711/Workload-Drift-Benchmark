/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>34 AND p.Score<168 AND p.CommentCount>5 AND p.CommentCount<20 AND u.DownVotes>7 AND u.DownVotes<73 AND v.CreationDate>'2013-09-19 21:40:49'::timestamp AND v.CreationDate<'2013-12-09 11:57:27'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2010-12-03 02:21:57'::timestamp AND b.Date<'2011-09-06 07:01:50'::timestamp;

