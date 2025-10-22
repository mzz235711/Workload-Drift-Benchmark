/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>32 AND p.Score<100 AND p.CommentCount>4 AND p.CommentCount<27 AND u.DownVotes>183 AND u.DownVotes<1895 AND v.CreationDate>'2009-10-10 08:14:00'::timestamp AND v.CreationDate<'2012-11-04 13:28:54'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<15 AND b.Date>'2013-08-28 21:46:13'::timestamp AND b.Date<'2013-11-04 04:12:47'::timestamp;

