/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>3 AND p.Score<179 AND p.CommentCount>7 AND p.CommentCount<38 AND u.DownVotes>304 AND u.DownVotes<419 AND v.CreationDate>'2009-03-05 04:07:06'::timestamp AND v.CreationDate<'2011-06-01 09:33:56'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2012-04-21 00:27:26'::timestamp AND b.Date<'2013-07-02 22:51:28'::timestamp;

