/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-12 AND p.Score<45 AND p.CommentCount>0 AND p.CommentCount<40 AND u.DownVotes>273 AND u.DownVotes<1490 AND v.CreationDate>'2009-09-09 15:57:55'::timestamp AND v.CreationDate<'2013-10-22 04:52:36'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<4 AND b.Date>'2010-11-24 21:01:54'::timestamp AND b.Date<'2011-01-09 21:36:24'::timestamp;

