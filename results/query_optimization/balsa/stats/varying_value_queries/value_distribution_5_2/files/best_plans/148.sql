/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-12 AND p.Score<143 AND p.CommentCount>1 AND p.CommentCount<38 AND u.DownVotes>376 AND u.DownVotes<541 AND v.CreationDate>'2011-10-09 00:29:19'::timestamp AND v.CreationDate<'2012-03-01 03:53:38'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<9 AND b.Date>'2012-06-27 20:56:33'::timestamp AND b.Date<'2013-10-30 07:06:50'::timestamp;

