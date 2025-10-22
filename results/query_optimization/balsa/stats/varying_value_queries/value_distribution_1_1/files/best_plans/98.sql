/*+ MergeJoin(b u p v)
 MergeJoin(u p v)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(u)
 IndexScan(p)
 SeqScan(v)
 Leading((b (u (p v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-11 AND p.Score<126 AND p.CommentCount>12 AND p.CommentCount<43 AND u.DownVotes>75 AND u.DownVotes<1916 AND v.CreationDate>'2012-12-28 13:21:39'::timestamp AND v.CreationDate<'2013-02-21 16:47:37'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<7 AND b.Date>'2011-01-31 15:17:56'::timestamp AND b.Date<'2011-02-12 02:39:26'::timestamp;

