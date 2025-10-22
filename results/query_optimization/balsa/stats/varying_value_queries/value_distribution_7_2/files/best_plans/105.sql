/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>62 AND p.Score<121 AND p.CommentCount>4 AND p.CommentCount<34 AND u.DownVotes>563 AND u.DownVotes<1279 AND v.CreationDate>'2009-10-20 10:02:28'::timestamp AND v.CreationDate<'2013-04-26 13:37:22'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<9 AND b.Date>'2011-12-14 21:41:01'::timestamp AND b.Date<'2012-02-19 01:52:41'::timestamp;

