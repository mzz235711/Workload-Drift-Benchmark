/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>26 AND p.Score<150 AND p.CommentCount>4 AND p.CommentCount<10 AND u.DownVotes>213 AND u.DownVotes<1235 AND v.CreationDate>'2010-12-09 07:46:34'::timestamp AND v.CreationDate<'2012-01-29 16:48:46'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2011-01-10 04:01:35'::timestamp AND b.Date<'2013-08-14 22:02:06'::timestamp;

