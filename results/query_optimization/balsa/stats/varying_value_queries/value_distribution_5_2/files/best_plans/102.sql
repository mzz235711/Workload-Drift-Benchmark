/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>2 AND p.Score<170 AND p.CommentCount>9 AND p.CommentCount<35 AND u.DownVotes>712 AND u.DownVotes<1758 AND v.CreationDate>'2010-07-23 16:50:02'::timestamp AND v.CreationDate<'2012-02-14 21:01:16'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<14 AND b.Date>'2011-12-29 06:17:56'::timestamp AND b.Date<'2012-02-13 06:40:28'::timestamp;

