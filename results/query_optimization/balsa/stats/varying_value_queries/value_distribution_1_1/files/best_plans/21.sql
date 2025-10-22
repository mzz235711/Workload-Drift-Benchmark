/*+ MergeJoin(b p v u)
 MergeJoin(p v u)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(p)
 SeqScan(v)
 SeqScan(u)
 Leading((b ((p v) u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-12 AND p.Score<16 AND p.CommentCount>1 AND p.CommentCount<26 AND u.DownVotes>319 AND u.DownVotes<1166 AND v.CreationDate>'2009-07-02 00:21:32'::timestamp AND v.CreationDate<'2013-01-12 02:57:25'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<14 AND b.Date>'2011-04-15 21:05:34'::timestamp AND b.Date<'2013-10-19 19:47:16'::timestamp;

