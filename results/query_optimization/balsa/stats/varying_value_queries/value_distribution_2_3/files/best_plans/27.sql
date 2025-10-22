/*+ MergeJoin(v b p u)
 MergeJoin(b p u)
 MergeJoin(p u)
 IndexScan(v)
 SeqScan(b)
 IndexScan(p)
 SeqScan(u)
 Leading((v (b (p u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-3 AND p.Score<147 AND p.CommentCount>18 AND p.CommentCount<41 AND u.DownVotes>696 AND u.DownVotes<1836 AND v.CreationDate>'2011-04-24 00:22:28'::timestamp AND v.CreationDate<'2012-04-04 07:51:29'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<11 AND b.Date>'2013-03-04 09:09:31'::timestamp AND b.Date<'2013-07-23 22:19:55'::timestamp;

