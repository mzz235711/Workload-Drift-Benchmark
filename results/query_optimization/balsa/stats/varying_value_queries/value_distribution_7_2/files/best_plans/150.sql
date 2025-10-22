/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 SeqScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>32 AND p.Score<120 AND p.CommentCount>15 AND p.CommentCount<27 AND u.DownVotes>159 AND u.DownVotes<1879 AND v.CreationDate>'2010-11-09 06:06:49'::timestamp AND v.CreationDate<'2013-04-22 21:24:41'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<9 AND b.Date>'2012-08-26 06:13:16'::timestamp AND b.Date<'2014-03-27 01:26:50'::timestamp;

