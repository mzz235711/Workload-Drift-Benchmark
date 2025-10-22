/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(v)
 SeqScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>72 AND p.Score<151 AND p.CommentCount>5 AND p.CommentCount<35 AND u.DownVotes>274 AND u.DownVotes<1775 AND v.CreationDate>'2013-07-27 00:32:08'::timestamp AND v.CreationDate<'2014-08-31 12:12:21'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2011-09-10 12:25:24'::timestamp AND b.Date<'2014-04-16 21:23:21'::timestamp;

