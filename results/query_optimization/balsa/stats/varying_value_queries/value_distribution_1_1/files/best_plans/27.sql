/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>112 AND p.Score<164 AND p.CommentCount>10 AND p.CommentCount<29 AND u.DownVotes>295 AND u.DownVotes<929 AND v.CreationDate>'2010-05-21 11:21:34'::timestamp AND v.CreationDate<'2012-08-19 19:45:31'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2013-06-06 07:57:49'::timestamp AND b.Date<'2013-12-21 13:05:35'::timestamp;

