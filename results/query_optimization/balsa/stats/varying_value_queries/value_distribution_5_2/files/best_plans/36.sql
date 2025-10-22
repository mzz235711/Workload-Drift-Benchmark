/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>114 AND p.Score<135 AND p.CommentCount>1 AND p.CommentCount<43 AND u.DownVotes>35 AND u.DownVotes<1792 AND v.CreationDate>'2010-03-30 08:15:14'::timestamp AND v.CreationDate<'2011-11-15 10:01:11'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2011-05-20 23:37:20'::timestamp AND b.Date<'2013-11-22 19:37:41'::timestamp;

