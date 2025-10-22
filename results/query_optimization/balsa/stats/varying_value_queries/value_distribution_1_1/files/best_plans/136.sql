/*+ MergeJoin(b v u p)
 MergeJoin(v u p)
 MergeJoin(u p)
 IndexScan(b)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>57 AND p.Score<144 AND p.CommentCount>6 AND p.CommentCount<19 AND u.DownVotes>689 AND u.DownVotes<1368 AND v.CreationDate>'2012-02-20 02:30:39'::timestamp AND v.CreationDate<'2013-05-22 05:27:13'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<5 AND b.Date>'2012-12-10 00:59:51'::timestamp AND b.Date<'2013-06-21 04:04:42'::timestamp;

