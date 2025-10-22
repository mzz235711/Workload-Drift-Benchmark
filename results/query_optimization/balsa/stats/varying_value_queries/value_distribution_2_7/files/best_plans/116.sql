/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>38 AND p.Score<155 AND p.CommentCount>5 AND p.CommentCount<36 AND u.DownVotes>637 AND u.DownVotes<899 AND v.CreationDate>'2011-01-10 03:13:09'::timestamp AND v.CreationDate<'2013-08-22 07:37:36'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2010-12-24 09:30:34'::timestamp AND b.Date<'2012-12-06 17:33:30'::timestamp;

