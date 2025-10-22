/*+ HashJoin(b u p pl)
 MergeJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 IndexScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.AnswerCount>=0 AND u.Views>=0 AND u.DownVotes<=2 AND u.UpVotes<=187 AND u.CreationDate<='2014-09-02 06:27:19'::timestamp AND b.Date>='2010-07-21 10:48:12'::timestamp AND b.Date<='2014-08-04 02:50:16'::timestamp;

