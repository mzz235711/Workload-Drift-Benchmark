/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>106 AND p.Score<186 AND p.CommentCount>2 AND p.CommentCount<12 AND u.DownVotes>354 AND u.DownVotes<1029 AND v.CreationDate>'2009-07-29 08:48:51'::timestamp AND v.CreationDate<'2012-03-07 22:41:56'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<7 AND b.Date>'2010-11-08 07:47:13'::timestamp AND b.Date<'2011-12-12 08:50:37'::timestamp;

