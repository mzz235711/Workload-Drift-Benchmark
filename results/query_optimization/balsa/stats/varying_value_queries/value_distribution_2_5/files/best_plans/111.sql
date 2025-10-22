/*+ HashJoin(b v u p)
 MergeJoin(v u p)
 NestLoop(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>8 AND p.Score<87 AND p.CommentCount>1 AND p.CommentCount<42 AND u.DownVotes>687 AND u.DownVotes<1119 AND v.CreationDate>'2012-07-24 18:26:19'::timestamp AND v.CreationDate<'2013-12-05 22:31:46'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<14 AND b.Date>'2013-08-01 21:53:07'::timestamp AND b.Date<'2014-03-30 00:12:02'::timestamp;

