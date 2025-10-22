/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(v)
 SeqScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>16 AND p.Score<186 AND p.CommentCount>14 AND p.CommentCount<44 AND u.DownVotes>260 AND u.DownVotes<1304 AND v.CreationDate>'2012-11-09 07:23:00'::timestamp AND v.CreationDate<'2013-09-09 18:58:54'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2010-11-10 10:38:57'::timestamp AND b.Date<'2011-01-07 04:07:41'::timestamp;

