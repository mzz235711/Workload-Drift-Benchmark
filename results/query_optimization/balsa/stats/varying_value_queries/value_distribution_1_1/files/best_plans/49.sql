/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>23 AND p.Score<159 AND p.CommentCount>17 AND p.CommentCount<35 AND u.DownVotes>139 AND u.DownVotes<348 AND v.CreationDate>'2009-08-27 21:22:16'::timestamp AND v.CreationDate<'2011-09-30 03:40:33'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<10 AND b.Date>'2011-08-02 06:59:40'::timestamp AND b.Date<'2012-08-11 19:33:01'::timestamp;

