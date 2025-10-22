/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>42 AND p.Score<180 AND p.CommentCount>4 AND p.CommentCount<10 AND u.DownVotes>545 AND u.DownVotes<990 AND v.CreationDate>'2011-10-05 10:14:56'::timestamp AND v.CreationDate<'2012-08-22 02:58:41'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<11 AND b.Date>'2011-03-16 10:56:34'::timestamp AND b.Date<'2012-05-29 21:19:56'::timestamp;

