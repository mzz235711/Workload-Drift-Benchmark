/*+ MergeJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-17 AND p.Score<105 AND p.CommentCount>18 AND p.CommentCount<41 AND u.DownVotes>631 AND u.DownVotes<793 AND v.CreationDate>'2009-04-29 02:07:16'::timestamp AND v.CreationDate<'2013-09-01 07:35:52'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<15 AND b.Date>'2014-03-12 11:59:25'::timestamp AND b.Date<'2014-05-15 11:46:53'::timestamp;

