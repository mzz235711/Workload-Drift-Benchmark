/*+ MergeJoin(b v u p)
 MergeJoin(v u p)
 NestLoop(u p)
 IndexScan(b)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-17 AND p.Score<140 AND p.CommentCount>2 AND p.CommentCount<25 AND u.DownVotes>105 AND u.DownVotes<179 AND v.CreationDate>'2009-06-24 07:36:33'::timestamp AND v.CreationDate<'2012-06-20 14:07:52'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<15 AND b.Date>'2014-02-19 04:07:10'::timestamp AND b.Date<'2014-03-24 17:26:22'::timestamp;

