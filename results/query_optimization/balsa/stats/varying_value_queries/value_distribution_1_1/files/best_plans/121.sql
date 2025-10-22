/*+ MergeJoin(b p v u)
 MergeJoin(p v u)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(p)
 SeqScan(v)
 SeqScan(u)
 Leading((b ((p v) u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-15 AND p.Score<78 AND p.CommentCount>10 AND p.CommentCount<37 AND u.DownVotes>200 AND u.DownVotes<1176 AND v.CreationDate>'2009-09-02 20:56:48'::timestamp AND v.CreationDate<'2011-10-31 02:17:28'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<15 AND b.Date>'2012-01-11 21:38:12'::timestamp AND b.Date<'2013-08-15 15:39:48'::timestamp;

