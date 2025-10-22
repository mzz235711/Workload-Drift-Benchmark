/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>21 AND p.Score<41 AND p.CommentCount>9 AND p.CommentCount<30 AND u.DownVotes>345 AND u.DownVotes<806 AND v.CreationDate>'2010-02-17 00:13:24'::timestamp AND v.CreationDate<'2010-11-22 06:40:41'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2011-04-23 22:57:49'::timestamp AND b.Date<'2013-04-19 19:11:08'::timestamp;

