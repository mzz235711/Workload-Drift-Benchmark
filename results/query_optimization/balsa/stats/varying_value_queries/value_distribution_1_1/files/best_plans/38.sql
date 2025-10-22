/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-16 AND p.Score<34 AND p.CommentCount>3 AND p.CommentCount<16 AND u.DownVotes>688 AND u.DownVotes<1061 AND v.CreationDate>'2009-12-29 20:30:13'::timestamp AND v.CreationDate<'2010-11-03 02:30:26'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<10 AND b.Date>'2011-12-14 05:20:49'::timestamp AND b.Date<'2012-09-16 05:33:54'::timestamp;

