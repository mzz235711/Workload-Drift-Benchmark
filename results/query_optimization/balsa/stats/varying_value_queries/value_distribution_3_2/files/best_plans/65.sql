/*+ MergeJoin(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>8 AND p.Score<72 AND p.CommentCount>6 AND p.CommentCount<35 AND u.DownVotes>557 AND u.DownVotes<962 AND v.CreationDate>'2010-07-01 01:40:10'::timestamp AND v.CreationDate<'2011-07-20 19:11:16'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2010-09-12 07:36:36'::timestamp AND b.Date<'2014-05-24 14:33:39'::timestamp;

