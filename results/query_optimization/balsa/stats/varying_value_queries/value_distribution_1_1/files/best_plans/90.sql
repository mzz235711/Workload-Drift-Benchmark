/*+ MergeJoin(b u p v)
 MergeJoin(u p v)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(u)
 IndexScan(p)
 SeqScan(v)
 Leading((b (u (p v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-6 AND p.Score<91 AND p.CommentCount>3 AND p.CommentCount<40 AND u.DownVotes>193 AND u.DownVotes<778 AND v.CreationDate>'2009-10-09 16:43:26'::timestamp AND v.CreationDate<'2014-01-07 09:31:52'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<13 AND b.Date>'2010-07-20 21:41:01'::timestamp AND b.Date<'2011-12-17 04:46:36'::timestamp;

