/*+ MergeJoin(b v u p)
 MergeJoin(v u p)
 NestLoop(u p)
 IndexScan(b)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-1 AND p.Score<188 AND p.CommentCount>2 AND p.CommentCount<34 AND u.DownVotes>278 AND u.DownVotes<1704 AND v.CreationDate>'2010-05-29 05:29:28'::timestamp AND v.CreationDate<'2011-01-24 01:52:37'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<14 AND b.Date>'2013-01-10 20:02:03'::timestamp AND b.Date<'2013-07-19 01:01:54'::timestamp;

