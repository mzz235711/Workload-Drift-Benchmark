/*+ MergeJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 IndexScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<169 AND p.CommentCount>32 AND p.CommentCount<43 AND u.DownVotes>192 AND u.DownVotes<1180 AND v.CreationDate>'2010-12-08 10:26:24'::timestamp AND v.CreationDate<'2012-11-28 10:01:39'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<15 AND b.Date>'2010-08-17 20:16:48'::timestamp AND b.Date<'2013-07-28 12:41:46'::timestamp;

