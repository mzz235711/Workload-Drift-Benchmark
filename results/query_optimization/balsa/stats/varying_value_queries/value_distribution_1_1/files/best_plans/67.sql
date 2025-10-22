/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>65 AND p.Score<136 AND p.CommentCount>4 AND p.CommentCount<18 AND u.DownVotes>471 AND u.DownVotes<1917 AND v.CreationDate>'2009-11-21 21:19:34'::timestamp AND v.CreationDate<'2013-02-15 23:22:12'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<13 AND b.Date>'2013-01-05 11:32:55'::timestamp AND b.Date<'2014-04-07 06:51:48'::timestamp;

