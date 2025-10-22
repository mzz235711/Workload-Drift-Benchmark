/*+ HashJoin(p u b v)
 NestLoop(p u b)
 HashJoin(p u)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading((((p u) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>25 AND p.Score<59 AND p.CommentCount>19 AND p.CommentCount<31 AND u.DownVotes>186 AND u.DownVotes<1536 AND v.CreationDate>'2010-07-25 02:26:32'::timestamp AND v.CreationDate<'2011-09-05 23:16:18'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<11 AND b.Date>'2012-05-04 02:57:25'::timestamp AND b.Date<'2012-08-03 14:56:37'::timestamp;

