/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>35 AND p.Score<68 AND p.CommentCount>11 AND p.CommentCount<14 AND u.DownVotes>90 AND u.DownVotes<843 AND v.CreationDate>'2010-12-01 02:50:58'::timestamp AND v.CreationDate<'2012-03-02 23:26:19'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<7 AND b.Date>'2011-02-21 00:55:18'::timestamp AND b.Date<'2011-08-19 07:20:10'::timestamp;

