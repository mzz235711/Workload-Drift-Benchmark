/*+ MergeJoin(b v u p)
 MergeJoin(v u p)
 NestLoop(u p)
 IndexScan(b)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-14 AND p.Score<35 AND p.CommentCount>3 AND p.CommentCount<19 AND u.DownVotes>698 AND u.DownVotes<1276 AND v.CreationDate>'2009-03-17 15:08:57'::timestamp AND v.CreationDate<'2010-11-13 05:32:49'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<15 AND b.Date>'2012-08-16 03:03:23'::timestamp AND b.Date<'2014-03-03 23:14:54'::timestamp;

