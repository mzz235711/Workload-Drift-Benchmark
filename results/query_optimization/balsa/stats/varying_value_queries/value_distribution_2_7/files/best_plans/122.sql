/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-11 AND p.Score<189 AND p.CommentCount>12 AND p.CommentCount<34 AND u.DownVotes>26 AND u.DownVotes<359 AND v.CreationDate>'2011-06-12 08:49:11'::timestamp AND v.CreationDate<'2014-07-21 00:04:17'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<7 AND b.Date>'2011-09-22 18:59:28'::timestamp AND b.Date<'2012-05-18 15:31:55'::timestamp;

