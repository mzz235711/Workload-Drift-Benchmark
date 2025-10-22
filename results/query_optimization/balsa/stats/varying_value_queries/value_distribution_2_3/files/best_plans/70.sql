/*+ HashJoin(b v u p)
 MergeJoin(v u p)
 NestLoop(u p)
 IndexScan(b)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-8 AND p.Score<134 AND p.CommentCount>4 AND p.CommentCount<16 AND u.DownVotes>122 AND u.DownVotes<945 AND v.CreationDate>'2011-03-20 10:11:21'::timestamp AND v.CreationDate<'2011-10-13 18:33:32'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<11 AND b.Date>'2013-01-30 04:04:38'::timestamp AND b.Date<'2013-12-17 08:07:03'::timestamp;

