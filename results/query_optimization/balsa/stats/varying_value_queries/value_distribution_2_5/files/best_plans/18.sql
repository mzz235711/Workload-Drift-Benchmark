/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>108 AND p.Score<189 AND p.CommentCount>0 AND p.CommentCount<32 AND u.DownVotes>32 AND u.DownVotes<1909 AND v.CreationDate>'2009-10-13 02:27:18'::timestamp AND v.CreationDate<'2013-03-16 22:17:47'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<13 AND b.Date>'2012-01-07 12:15:35'::timestamp AND b.Date<'2013-08-23 19:59:59'::timestamp;

