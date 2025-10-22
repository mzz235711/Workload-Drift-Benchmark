/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<40 AND p.CommentCount>34 AND p.CommentCount<41 AND u.DownVotes>92 AND u.DownVotes<839 AND v.CreationDate>'2012-03-05 08:58:07'::timestamp AND v.CreationDate<'2012-08-04 11:30:25'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<7 AND b.Date>'2012-12-06 03:56:39'::timestamp AND b.Date<'2013-08-26 09:05:50'::timestamp;

