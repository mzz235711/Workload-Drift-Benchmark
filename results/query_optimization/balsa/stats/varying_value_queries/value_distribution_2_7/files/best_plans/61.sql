/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-3 AND p.Score<54 AND p.CommentCount>12 AND p.CommentCount<14 AND u.DownVotes>78 AND u.DownVotes<364 AND v.CreationDate>'2011-05-12 06:42:55'::timestamp AND v.CreationDate<'2014-01-01 02:09:15'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2013-01-08 21:20:33'::timestamp AND b.Date<'2014-07-02 16:37:25'::timestamp;

