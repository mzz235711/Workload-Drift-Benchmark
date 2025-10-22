/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>24 AND p.Score<89 AND p.CommentCount>10 AND p.CommentCount<28 AND u.DownVotes>595 AND u.DownVotes<819 AND v.CreationDate>'2012-01-03 20:49:17'::timestamp AND v.CreationDate<'2012-11-02 07:12:48'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<13 AND b.Date>'2011-02-03 23:48:36'::timestamp AND b.Date<'2013-10-18 07:06:07'::timestamp;

