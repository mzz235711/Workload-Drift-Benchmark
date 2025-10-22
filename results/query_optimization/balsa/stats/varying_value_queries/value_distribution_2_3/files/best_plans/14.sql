/*+ HashJoin(v b u p)
 MergeJoin(b u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-1 AND p.Score<72 AND p.CommentCount>8 AND p.CommentCount<14 AND u.DownVotes>179 AND u.DownVotes<1859 AND v.CreationDate>'2013-01-17 14:02:33'::timestamp AND v.CreationDate<'2013-11-06 03:49:19'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<13 AND b.Date>'2013-05-07 14:46:47'::timestamp AND b.Date<'2014-03-21 17:44:42'::timestamp;

