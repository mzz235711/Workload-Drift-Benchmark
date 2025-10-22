/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>99 AND p.Score<142 AND p.CommentCount>8 AND p.CommentCount<40 AND u.DownVotes>99 AND u.DownVotes<196 AND v.CreationDate>'2010-02-07 01:30:16'::timestamp AND v.CreationDate<'2012-10-06 09:59:17'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<11 AND b.Date>'2012-12-12 00:29:56'::timestamp AND b.Date<'2013-12-01 04:03:51'::timestamp;

